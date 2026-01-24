// AddLookXPtoEXE.cpp : Defines the entry point for the application.
//
#define LookTiner 1000
#include <windows.h>
#include <commctrl.h>
#include <stdio.h>
#include "resource.h"
#pragma comment (lib,"comctl32.lib")

char *jours[7] = {"dimanche", "lundi","mardi","mercredi","jeudi","vendredi","samedi"};
char *mois[12] = {"janvier", "février","mars", "avril", "mai", "juin","juillet","aout","septembre", "octobre", "novembre", "décembre"};


WNDPROC oldProcSplit;
HINSTANCE hInst=NULL, hInstance;
OPENFILENAME ofn;
INITCOMMONCONTROLSEX iccex; 
char Temporaire[256];
char tmpXP[256];
long cxcli, cycli;

LRESULT CALLBACK DlgMainProc(HWND hDlg, UINT msg, WPARAM wParam, LPARAM lParam);
VOID Tocken();
int CreateResource();
void ActiverCommandes(HWND hDlg,bool Actif);

int APIENTRY WinMain(HINSTANCE hInstance,HINSTANCE hPrevInstance,LPSTR lpCmdLine,int nCmdShow){
	hInst = hInstance; 

	return DialogBoxParam(hInst, MAKEINTRESOURCE(IDD_DIALOG1), NULL, (DLGPROC)DlgMainProc,0);
  
}


LRESULT CALLBACK DlgMainProc(HWND hDlg, UINT msg, WPARAM wParam, LPARAM lParam)
{
long fond=(LONG)CreateSolidBrush(RGB(225,225,225));
switch (msg)
	{
		case WM_INITDIALOG:{
			#ifdef _WIN64
			SetClassLong(hDlg, GCLP_HICON, (long)LoadIcon(hInst, MAKEINTRESOURCE(106)));
			#else
			SetClassLong(hDlg, GCL_HICON, (long)LoadIcon(hInst, MAKEINTRESOURCE(106)));
			#endif
			InitCommonControls();  
			ActiverCommandes(hDlg,false);
			SYSTEMTIME st;
			GetLocalTime(&st);
			wsprintf(Temporaire,"AddLookXP2EXE a démaré %s le %d %s %.4d à %.2d:%.2d:%.2d",jours[st.wDayOfWeek],st.wDay,mois[st.wMonth-1],st.wYear,st.wHour,st.wMinute,st.wSecond);
			SetWindowText(hDlg,Temporaire);
			SetTimer(hDlg,LookTiner,1000,(TIMERPROC) NULL);
			DWORD cmp=80;
			GetComputerName(Temporaire,&cmp);
			SetDlgItemText(hDlg,IDC_PC,Temporaire);
						   }break;

		case WM_TIMER:{
			SYSTEMTIME st;
			GetLocalTime(&st);
			wsprintf(Temporaire,"Nous sommes %s, le %2d %s %4d , il est %.2d:%.2d:%.2d",jours[st.wDayOfWeek],st.wDay,mois[st.wMonth-1],st.wYear,st.wHour,st.wMinute,st.wSecond);
			SetDlgItemText(hDlg,IDC_HORRAIRE,Temporaire);
  }break;
		case WM_SIZE: {
			if(wParam == SIZE_RESTORED || wParam == SIZE_MAXIMIZED)
			{
				cxcli = LOWORD(lParam); cycli = HIWORD(lParam);
				//SetPosControls();
			}return 0;
					  }

		case WM_COMMAND:{
			switch (LOWORD(wParam)){
				case ID_OPEN:{
					ActiverCommandes(hDlg,false);
					OPENFILENAME ofn;
					tmpXP[0] = 0;
					ZeroMemory(&ofn, sizeof(ofn));
					ofn.lStructSize   = sizeof(ofn);
					ofn.hwndOwner     = hDlg;
					ofn.lpstrFilter   = "Fichier Executable (*.exe)\0*.exe\0\0";
					ofn.lpstrFile     = tmpXP;
					ofn.nMaxFile      = MAX_PATH;
					ofn.lpstrDefExt   = "exe";
					ofn.lpstrTitle    = "Ajouter un fichier Executable...";
					ofn.Flags         = OFN_EXPLORER|OFN_FILEMUSTEXIST|OFN_HIDEREADONLY;				 
					if (GetOpenFileName(&ofn)==TRUE) {
						HANDLE hf = CreateFile(ofn.lpstrFile, GENERIC_READ,0, (LPSECURITY_ATTRIBUTES) NULL,OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,(HANDLE) NULL); 
						SetDlgItemText(hDlg,IDC_EDIT1,ofn.lpstrFile);
						strcat(tmpXP,".manifest");
						SetDlgItemText(hDlg,IDC_EDIT2,tmpXP);
						ActiverCommandes(hDlg,true);
					}
					}break;
				case IDOK:{
					Tocken();CreateResource();
						  }break;
				case IDOK2:{
					Tocken();CreateResource();ShellExecute(hDlg,"open",ofn.lpstrFile,0,0,1);
						  }break;
				case IDCANCEL:
					PostQuitMessage(0);
					EndDialog(hDlg,0);
					break;
			}
			break;
		}
		case WM_CTLCOLORDLG:	return fond;
		case WM_CTLCOLORSTATIC:	SetTextColor( (HDC)wParam, RGB(128,0,255) );SetBkMode( (HDC)wParam, TRANSPARENT ); 		return fond;
		case WM_CTLCOLOREDIT:{
				switch (LOWORD(wParam)){
					case IDC_EDIT1:	SetTextColor( (HDC)wParam, RGB(0,0xFF,0 ) ); 
					case IDC_EDIT2:	SetTextColor( (HDC)wParam, RGB(0,0,0xFF ) ); 
				}
			SetBkMode( (HDC)wParam, TRANSPARENT );
			}return fond;
		case WM_CTLCOLORLISTBOX:SetTextColor( (HDC)wParam, RGB(255,0, 255) );SetBkMode( (HDC)wParam, TRANSPARENT ); 	return fond;
		case WM_CTLCOLORBTN:	SetTextColor( (HDC)wParam, RGB(0,255, 255) );SetBkMode( (HDC)wParam, TRANSPARENT ); 	return fond;
		case WM_CTLCOLORMSGBOX:	return (long)CreateSolidBrush(RGB(128,128,128));
		default: 	
			return 0;
	}
	return 1;
}
VOID Tocken() {
	HANDLE hToken;
	TOKEN_PRIVILEGES tkp;
	OpenProcessToken(GetCurrentProcess(),TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY,(VOID**) &hToken);
	LookupPrivilegeValue(NULL, SE_SHUTDOWN_NAME,&tkp.Privileges[0].Luid);
	tkp.PrivilegeCount = 1;
	tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
	AdjustTokenPrivileges(hToken, FALSE, &tkp, 0,(PTOKEN_PRIVILEGES)NULL, 0);
}

int CreateResource(){
	FILE *f=fopen(tmpXP,"w+");
	fprintf(f,"<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n");
	fprintf(f,"<assembly xmlns=\"urn:schemas-microsoft-com:asm.v1\" manifestVersion=\"1.0\">\n");
	fprintf(f,"<assemblyIdentity version=\"1.0.0.0\" processorArchitecture=\"X86\" name=\"Microsoft.Windows.AddLookXP\" type=\"win32\" />\n");
	fprintf(f,"<description>Tapez ici une description de votre application</description>\n");
	fprintf(f,"<dependency> <dependentAssembly>\n");
	fprintf(f,"<assemblyIdentity type=\"win32\" name=\"Microsoft.Windows.Common-Controls\" version=\"6.0.0.0\" processorArchitecture=\"X86\" publicKeyToken=\"6595b64144ccf1df\" language=\"*\" />\n");
	fprintf(f,"</dependentAssembly>\n</dependency>\n</assembly>\n");
	return fclose(f);
}
void ActiverCommandes(HWND hDlg,bool Actif){
	EnableWindow(GetDlgItem(hDlg,IDOK),Actif);
	EnableWindow(GetDlgItem(hDlg,IDOK2),Actif);
}
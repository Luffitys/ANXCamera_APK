.class Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BottomViewHelper"
.end annotation


# instance fields
.field public mFullscreenArea:Landroid/view/ViewGroup;

.field public mImePackageName:Ljava/lang/String;

.field public mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mInflater:Landroid/view/LayoutInflater;

.field public mInputFrame:Landroid/view/ViewGroup;

.field public mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field public mMiuiBottomArea:Landroid/view/ViewGroup;

.field public mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/inputmethod/InputMethodManager;Ljava/lang/String;Landroid/inputmethodservice/InputMethodService;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mFullscreenArea:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputFrame:Landroid/view/ViewGroup;

    iput-object p4, p0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mRootView:Landroid/view/View;

    iput-object p5, p0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    iput-object p6, p0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p7, p0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mImePackageName:Ljava/lang/String;

    iput-object p8, p0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

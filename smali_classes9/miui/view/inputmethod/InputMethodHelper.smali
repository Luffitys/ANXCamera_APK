.class public Lmiui/view/inputmethod/InputMethodHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;


# instance fields
.field private mManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/view/inputmethod/InputMethodHelper$1;

    invoke-direct {v0}, Lmiui/view/inputmethod/InputMethodHelper$1;-><init>()V

    sput-object v0, Lmiui/view/inputmethod/InputMethodHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lmiui/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/inputmethod/InputMethodHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/inputmethod/InputMethodHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/view/inputmethod/InputMethodHelper;
    .locals 1

    sget-object v0, Lmiui/view/inputmethod/InputMethodHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/inputmethod/InputMethodHelper;

    return-object v0
.end method


# virtual methods
.method public getManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lmiui/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public hideKeyBoard(Landroid/widget/EditText;)V
    .locals 1

    iget-object p0, p0, Lmiui/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    return-void
.end method

.method public showKeyBoard(Landroid/widget/EditText;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lmiui/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    iget-object p0, p0, Lmiui/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

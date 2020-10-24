.class public Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;
.super Lcom/miui/internal/variable/Android_App_AlertDialog_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# static fields
.field private static final mAlertField:Lmiui/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/app/AlertDialog;

    const-string v1, "mAlert"

    const-string v2, "Lcom/android/internal/app/AlertController;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->mAlertField:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_AlertDialog_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;

    return-void
.end method

.method private updateAlertField(Landroid/app/AlertDialog;)V
    .locals 2

    :try_start_0
    new-instance p0, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/internal/variable/AlertControllerWrapper;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    sget-object v0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->mAlertField:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p0}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string v0, "android.app.AlertDialog.mAlert"

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->bind(Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .locals 1

    const-string v0, "(Landroid/content/Context;IZ)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/util/ClassProxy;->attachConstructor(Ljava/lang/String;)J

    const-string v0, "(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/util/ClassProxy;->attachConstructor(Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginal_init_(JLandroid/app/AlertDialog;Landroid/content/Context;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->original_init_(JLandroid/app/AlertDialog;Landroid/content/Context;IZ)V

    return-void
.end method

.method protected callOriginal_init_(JLandroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->original_init_(JLandroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method protected handle()V
    .locals 14

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->handle_init_(JLandroid/app/AlertDialog;Landroid/content/Context;IZ)V

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->handle_init_(JLandroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method protected handle_init_(JLandroid/app/AlertDialog;Landroid/content/Context;IZ)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->callOriginal_init_(JLandroid/app/AlertDialog;Landroid/content/Context;IZ)V

    invoke-direct {p0, p3}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->updateAlertField(Landroid/app/AlertDialog;)V

    return-void
.end method

.method protected handle_init_(JLandroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->callOriginal_init_(JLandroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-direct {p0, p3}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->updateAlertField(Landroid/app/AlertDialog;)V

    return-void
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected original_init_(JLandroid/app/AlertDialog;Landroid/content/Context;IZ)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_App_AlertDialog_class.original_init_(long, AlertDialog, Context, int, boolean)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected original_init_(JLandroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_App_AlertDialog_class.original_init_(long, AlertDialog, Context, boolean, OnCancelListener)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

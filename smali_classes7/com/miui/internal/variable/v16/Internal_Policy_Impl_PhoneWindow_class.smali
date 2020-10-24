.class public Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;
.super Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# static fields
.field private static final FieldLayoutInflater:Ljava/lang/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    const-string v1, "mLayoutInflater"

    invoke-static {v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->FieldLayoutInflater:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;-><init>(Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private replaceLayoutInflater(Landroid/view/Window;)Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->FieldLayoutInflater:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;

    invoke-direct {v1, v0, p1, p0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;)V

    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->FieldLayoutInflater:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method private restoreLayoutInflater(Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)V
    .locals 0

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->FieldLayoutInflater:Ljava/lang/reflect/Field;

    invoke-static {p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->access$300(Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->asInterface()Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->bind(Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .locals 2

    const-string v0, "installDecor"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalInstallDecor(JLjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;->installDecor(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->originalInstallDecor(JLjava/lang/Object;)V

    return-void
.end method

.method protected handle()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->handleInstallDecor(JLjava/lang/Object;)V

    return-void
.end method

.method protected handleInstallDecor(JLjava/lang/Object;)V
    .locals 2

    move-object v0, p3

    check-cast v0, Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->replaceLayoutInflater(Landroid/view/Window;)Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->callOriginalInstallDecor(JLjava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->restoreLayoutInflater(Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)V

    sget-boolean p0, Lcom/miui/internal/util/DeviceHelper;->IS_OLED:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$attr;->backgroundDim:I

    const/16 p3, 0x14

    invoke-static {p1, p2, p3}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->callOriginalInstallDecor(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Extension;->get()Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalInstallDecor(JLjava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Internal_Policy_Impl_PhoneWindow_class.originalInstallDecor(long, Object)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

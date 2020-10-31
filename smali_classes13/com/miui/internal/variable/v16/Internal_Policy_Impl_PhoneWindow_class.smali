.class public Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;
.super Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;
.source "Internal_Policy_Impl_PhoneWindow_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final FieldLayoutInflater:Ljava/lang/reflect/Field;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    const-string v1, "mLayoutInflater"

    invoke-static {v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->FieldLayoutInflater:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;-><init>(Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3

    invoke-static {p0, p1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private replaceLayoutInflater(Landroid/view/Window;)Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->FieldLayoutInflater:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    new-instance v2, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;

    invoke-direct {v2, v1, p1, v0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;)V

    sget-object v3, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->FieldLayoutInflater:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    return-object v2

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private restoreLayoutInflater(Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->FieldLayoutInflater:Ljava/lang/reflect/Field;

    # getter for: Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->access$300(Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mImpl:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->asInterface()Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->bind(Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .registers 3

    const-string v0, "installDecor"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalInstallDecor(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;

    if-eqz v0, :cond_8

    invoke-interface {v0, p3}, Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;->installDecor(Ljava/lang/Object;)V

    return-void

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->originalInstallDecor(JLjava/lang/Object;)V

    return-void
.end method

.method protected handle()V
    .registers 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->handleInstallDecor(JLjava/lang/Object;)V

    return-void
.end method

.method protected handleInstallDecor(JLjava/lang/Object;)V
    .registers 11

    move-object v0, p3

    check-cast v0, Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-direct {p0, v0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->replaceLayoutInflater(Landroid/view/Window;)Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;

    move-result-object v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->callOriginalInstallDecor(JLjava/lang/Object;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->restoreLayoutInflater(Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)V

    sget-boolean v3, Lcom/miui/internal/util/DeviceHelper;->IS_OLED:Z

    if-eqz v3, :cond_31

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/miui/internal/R$attr;->backgroundDim:I

    const/16 v6, 0x14

    invoke-static {v4, v5, v6}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    :cond_31
    goto :goto_35

    :cond_32
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->callOriginalInstallDecor(JLjava/lang/Object;)V

    :goto_35
    return-void
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Extension;->get()Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalInstallDecor(JLjava/lang/Object;)V
    .registers 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Internal_Policy_Impl_PhoneWindow_class.originalInstallDecor(long, Object)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public abstract Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;
.super Lcom/miui/internal/util/ClassProxy;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# static fields
.field protected static setLayoutInScreenEnabled:Lmiui/reflect/Method;

.field protected static setLayoutInsetDecor:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "(Z)V"

    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setLayoutInScreenEnabled"

    invoke-static {v1, v2, v0}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled:Lmiui/reflect/Method;

    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setLayoutInsetDecor"

    invoke-static {v1, v2, v0}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInsetDecor:Lmiui/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "no such method"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Landroid/widget/PopupWindow;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 0

    return-void
.end method

.method public abstract setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V
.end method

.method public abstract setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V
.end method

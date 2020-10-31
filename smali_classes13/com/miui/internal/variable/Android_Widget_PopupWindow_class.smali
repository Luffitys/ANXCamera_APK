.class public abstract Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_Widget_PopupWindow_class.java"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/widget/PopupWindow;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field protected static setLayoutInScreenEnabled:Lmiui/reflect/Method;

.field protected static setLayoutInsetDecor:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "(Z)V"

    :try_start_2
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
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    goto :goto_21

    :catch_17
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "no such method"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_21
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Landroid/widget/PopupWindow;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .registers 1

    return-void
.end method

.method public abstract setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V
.end method

.method public abstract setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V
.end method

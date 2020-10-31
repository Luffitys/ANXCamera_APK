.class public Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;
.super Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;
.source "Android_Widget_PopupWindow_class.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected handle()V
    .registers 1

    return-void
.end method

.method public setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V
    .registers 8

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled:Lmiui/reflect/Method;

    if-eqz v0, :cond_1f

    :try_start_4
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "invoke setLayoutInScreenEnabled failed"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V
    .registers 8

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInsetDecor:Lmiui/reflect/Method;

    if-eqz v0, :cond_1f

    :try_start_4
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInsetDecor:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "invoke setLayoutInsetDecor failed"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

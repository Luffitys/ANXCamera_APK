.class public Lcom/miui/internal/variable/v16/Android_View_Window_class;
.super Lcom/miui/internal/variable/Android_View_Window_class;
.source ""


# static fields
.field private static final EXTRA_FLAG_STATUS_BAR_DARK_MODE:I = 0x10

.field private static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT:I = 0x1

.field private static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT_MASK:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_Window_class;-><init>()V

    return-void
.end method


# virtual methods
.method public setTranslucentStatus(Landroid/view/Window;I)Z
    .locals 5

    sget-object p0, Lcom/miui/internal/variable/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-nez p2, :cond_1

    :try_start_0
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v4

    invoke-virtual {p0, v2, p1, p2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string p2, "clearExtraFlags failed"

    :goto_0
    invoke-virtual {p1, p2, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    if-ne p2, v4, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    move p0, v4

    :goto_1
    :try_start_1
    sget-object p2, Lcom/miui/internal/variable/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {p2, v2, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v0, v4

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string p2, "addExtraFlags failed"

    goto :goto_0

    :goto_3
    return v0
.end method

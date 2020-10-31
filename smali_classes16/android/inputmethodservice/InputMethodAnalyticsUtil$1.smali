.class Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;
.super Ljava/lang/Object;
.source "InputMethodAnalyticsUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handlerThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/HandlerThread;)V
    .registers 4

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.miui.input.provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "input_method_analytics"

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception v0

    const-string v1, "InputMethodAnalytics"

    const-string v2, "call input method provider error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

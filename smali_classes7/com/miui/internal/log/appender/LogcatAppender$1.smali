.class Lcom/miui/internal/log/appender/LogcatAppender$1;
.super Ljava/lang/ThreadLocal;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/log/appender/LogcatAppender;


# direct methods
.method constructor <init>(Lcom/miui/internal/log/appender/LogcatAppender;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/log/appender/LogcatAppender$1;->this$0:Lcom/miui/internal/log/appender/LogcatAppender;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/log/appender/LogcatAppender$1;->initialValue()Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected initialValue()Ljava/lang/StringBuilder;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    return-object p0
.end method

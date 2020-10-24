.class public abstract Lmiui/util/async/tasks/HttpTask;
.super Lmiui/util/async/Task;
.source ""


# instance fields
.field private final mMethod:Lmiui/util/async/tasks/HttpTask$Method;

.field private final mParams:Lmiui/net/http/HttpRequestParams;

.field private mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

.field private final mSession:Lmiui/net/http/HttpSession;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lmiui/util/async/tasks/HttpTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lmiui/util/async/tasks/HttpTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lmiui/net/http/HttpSession;->getDefault()Lmiui/net/http/HttpSession;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask;->mSession:Lmiui/net/http/HttpSession;

    iput-object p2, p0, Lmiui/util/async/tasks/HttpTask;->mMethod:Lmiui/util/async/tasks/HttpTask$Method;

    sget-object p1, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    if-ne p2, p1, :cond_3

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    new-instance p1, Lmiui/net/http/HttpRequestParams;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p4, p2, v0

    invoke-direct {p1, p2}, Lmiui/net/http/HttpRequestParams;-><init>([Ljava/lang/Object;)V

    const/16 p2, 0x3f

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&"

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "?"

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p3, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask;->mParams:Lmiui/net/http/HttpRequestParams;

    goto :goto_2

    :cond_3
    iput-object p3, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    new-instance p1, Lmiui/net/http/HttpRequestParams;

    invoke-direct {p1}, Lmiui/net/http/HttpRequestParams;-><init>()V

    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask;->mParams:Lmiui/net/http/HttpRequestParams;

    invoke-virtual {p1, p4}, Lmiui/net/http/HttpRequestParams;->add(Ljava/util/Map;)Lmiui/net/http/HttpRequestParams;

    :goto_2
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method protected final request()Lmiui/net/http/HttpResponse;
    .locals 4

    iget-object v0, p0, Lmiui/util/async/tasks/HttpTask;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/util/async/tasks/HttpTask$1;

    invoke-direct {v0, p0}, Lmiui/util/async/tasks/HttpTask$1;-><init>(Lmiui/util/async/tasks/HttpTask;)V

    iput-object v0, p0, Lmiui/util/async/tasks/HttpTask;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    :cond_0
    sget-object v0, Lmiui/util/async/tasks/HttpTask$2;->$SwitchMap$miui$util$async$tasks$HttpTask$Method:[I

    iget-object v1, p0, Lmiui/util/async/tasks/HttpTask;->mMethod:Lmiui/util/async/tasks/HttpTask$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/util/async/tasks/HttpTask;->mSession:Lmiui/net/http/HttpSession;

    iget-object v1, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lmiui/util/async/tasks/HttpTask;->mParams:Lmiui/net/http/HttpRequestParams;

    iget-object p0, p0, Lmiui/util/async/tasks/HttpTask;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    invoke-virtual {v0, v1, v2, v3, p0}, Lmiui/net/http/HttpSession;->post(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/util/async/tasks/HttpTask;->mSession:Lmiui/net/http/HttpSession;

    iget-object v1, p0, Lmiui/util/async/tasks/HttpTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lmiui/util/async/tasks/HttpTask;->mParams:Lmiui/net/http/HttpRequestParams;

    iget-object p0, p0, Lmiui/util/async/tasks/HttpTask;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    invoke-virtual {v0, v1, v2, v3, p0}, Lmiui/net/http/HttpSession;->get(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;

    move-result-object v2

    :goto_0
    return-object v2
.end method

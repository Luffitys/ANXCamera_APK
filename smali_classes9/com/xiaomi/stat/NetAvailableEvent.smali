.class public Lcom/xiaomi/stat/NetAvailableEvent;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final RESULT_TYPE_0:I = 0x0

.field public static final RESULT_TYPE_1:I = 0x1

.field public static final RESULT_TYPE_2:I = 0x2


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:J

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->a(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->b(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->b:I

    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->c(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->c:I

    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->d(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->e(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->e:I

    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->f(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->f:J

    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->g(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->g:I

    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->h(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/stat/NetAvailableEvent;->h:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/stat/NetAvailableEvent$Builder;Lcom/xiaomi/stat/af;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/NetAvailableEvent;-><init>(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getExt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->f:J

    return-wide v0
.end method

.method public getResponseCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->b:I

    return p0
.end method

.method public getResultType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->e:I

    return p0
.end method

.method public getRetryCount()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->g:I

    return p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->c:I

    return p0
.end method

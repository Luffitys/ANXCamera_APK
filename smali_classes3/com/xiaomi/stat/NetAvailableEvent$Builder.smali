.class public final Lcom/xiaomi/stat/NetAvailableEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/NetAvailableEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->b:I

    return p0
.end method

.method static synthetic c(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->c:I

    return p0
.end method

.method static synthetic d(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->e:I

    return p0
.end method

.method static synthetic f(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->f:J

    return-wide v0
.end method

.method static synthetic g(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->g:I

    return p0
.end method

.method static synthetic h(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/xiaomi/stat/NetAvailableEvent;
    .locals 2

    new-instance v0, Lcom/xiaomi/stat/NetAvailableEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/stat/NetAvailableEvent;-><init>(Lcom/xiaomi/stat/NetAvailableEvent$Builder;Lcom/xiaomi/stat/ah;)V

    return-object v0
.end method

.method public exception(Ljava/lang/String;)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public ext(Ljava/lang/String;)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public flag(Ljava/lang/String;)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public requestStartTime(J)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->f:J

    return-object p0
.end method

.method public responseCode(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->b:I

    return-object p0
.end method

.method public resultType(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->e:I

    return-object p0
.end method

.method public retryCount(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->g:I

    return-object p0
.end method

.method public statusCode(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->c:I

    return-object p0
.end method

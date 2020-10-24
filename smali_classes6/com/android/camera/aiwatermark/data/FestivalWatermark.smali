.class public Lcom/android/camera/aiwatermark/data/FestivalWatermark;
.super Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;
.source ""


# instance fields
.field private mChinaTraditionlist:Ljava/util/ArrayList;

.field private mInternationallist:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    return-void
.end method

.method private getChinaTraditionWM()Ljava/util/ArrayList;
    .locals 6

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v2, "0101_c"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0xc

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v2, "0505_c"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v2, "0815_c"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v2, "0100_c"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v2, "0707_c"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v2, "1208_c"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getInternationalFestivalWM()Ljava/util/ArrayList;
    .locals 6

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v2, "0101"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0xc

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v2, "0214"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v2, "0601"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v2, "1225"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getFestivalWatermark(I)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->getChinaTraditionWM()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->getInternationalFestivalWM()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getForAI()Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getWatermarkByType(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getForManual()Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getWatermarkByType(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

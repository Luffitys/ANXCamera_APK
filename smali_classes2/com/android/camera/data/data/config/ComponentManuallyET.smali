.class public Lcom/android/camera/data/data/config/ComponentManuallyET;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyET.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComponentManuallyET"


# instance fields
.field private mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

.field private mSupperEISEnabled:Z

.field private mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private createItems(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xa7

    const/16 v2, 0xb4

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_4

    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getExposureTimeRange()Landroid/util/Range;

    move-result-object p2

    if-ne p1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    aget-object p1, p0, p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v3, 0x1

    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_4

    aget-object v4, p0, v3

    iget-object v5, v4, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gtz v7, :cond_3

    cmp-long v5, v5, p1

    if-gtz v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->Ae()Z

    move-result v1

    const-string v4, "1000000"

    const v5, 0x7f0f0270

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const-string v13, "0"

    const v14, 0x7f0f02a4

    const/4 v15, 0x0

    const/4 v2, -0x1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->se()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x11

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v2, v2, v14, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v15

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v2, v2, v5, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v12

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f0f0296

    const-string v5, "2000000"

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v11

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f0f0284

    const-string v5, "4000000"

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v10

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f0f0272

    const-string v5, "8000000"

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v9

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f0f029a

    const-string v5, "16667000"

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v8

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f0f0289

    const-string v5, "33333000"

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v7

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f0f0276

    const-string v5, "66667000"

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v6

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f0f029e

    const-string v5, "125000000"

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f0f028f

    const-string v5, "250000000"

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    const/16 v3, 0xa

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f027b

    const-string v6, "500000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xb

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f027e

    const-string v6, "1000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0288

    const-string v6, "2000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xd

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0293

    const-string v6, "4000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f02a2

    const-string v6, "8000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f027a

    const-string v6, "16000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x10

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f028d

    const-string v6, "32000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    goto/16 :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x35

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v2, v2, v14, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v15

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f0f0292

    const-string v14, "250000"

    invoke-direct {v3, v2, v2, v13, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v12

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f028c

    const-string v13, "312500"

    invoke-direct {v3, v2, v2, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v11

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f0f0285

    const-string v12, "400000"

    invoke-direct {v3, v2, v2, v11, v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v10

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v10, 0x7f0f0281

    const-string v11, "500000"

    invoke-direct {v3, v2, v2, v10, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v9

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f0f0279

    const-string v10, "625000"

    invoke-direct {v3, v2, v2, v9, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v8

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v8, 0x7f0f0273

    const-string v9, "800000"

    invoke-direct {v3, v2, v2, v8, v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v7

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v2, v2, v5, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v6

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f0f02a0

    const-string v5, "1250000"

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f0f029b

    const-string v5, "1562500"

    invoke-direct {v3, v2, v2, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    const/16 v3, 0xa

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0296

    const-string v6, "2000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xb

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0291

    const-string v6, "2500000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f028b

    const-string v6, "3125000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xd

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0284

    const-string v6, "4000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0280

    const-string v6, "5000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0278

    const-string v6, "6250000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x10

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0272

    const-string v6, "8000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x11

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f026f

    const-string v6, "10000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x12

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f029f

    const-string v6, "12500000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x13

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f029a

    const-string v6, "16670000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x14

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0295

    const-string v6, "20000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x15

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0290

    const-string v6, "25000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x16

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0289

    const-string v6, "33300000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x17

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0283

    const-string v6, "40000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x18

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f027f

    const-string v6, "50000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x19

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0276

    const-string v6, "66700000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0274

    const-string v6, "76900000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f026e

    const-string v6, "100000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f029e

    const-string v6, "125000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1d

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0299

    const-string v6, "166700000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1e

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0294

    const-string v6, "200000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1f

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f028f

    const-string v6, "250000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x20

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0269

    const-string v6, "300000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x21

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f026a

    const-string v6, "400000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x22

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f026b

    const-string v6, "500000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x23

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f026c

    const-string v6, "600000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x24

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f026d

    const-string v6, "800000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x25

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f027e

    const-string v6, "1000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x26

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f027c

    const-string v6, "1300000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x27

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f027d

    const-string v6, "1600000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x28

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0288

    const-string v6, "2000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x29

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0287

    const-string v6, "2500000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f028e

    const-string v6, "3200000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0293

    const-string v6, "4000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0298

    const-string v6, "5000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2d

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f029d

    const-string v6, "6000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2e

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f02a2

    const-string v6, "8000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2f

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0271

    const-string v6, "10000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x30

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0275

    const-string v6, "13000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x31

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0277

    const-string v6, "15000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x32

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0282

    const-string v6, "20000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x33

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0286

    const-string v6, "25000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x34

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f028a

    const-string v6, "30000000000"

    invoke-direct {v4, v2, v2, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v3

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    :goto_1
    iget-object v0, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0
.end method

.method private getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 14

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mSupperEISEnabled:Z

    if-ne v2, v0, :cond_0

    return-object v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mSupperEISEnabled:Z

    const/16 v1, 0x17

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f02a4

    const/4 v4, -0x1

    const-string v5, "0"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0f0292

    const-string v6, "250000"

    invoke-direct {v2, v4, v4, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f0f028c

    const-string v7, "312500"

    invoke-direct {v2, v4, v4, v6, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v6, 0x2

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f0f0285

    const-string v8, "400000"

    invoke-direct {v2, v4, v4, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v7, 0x3

    aput-object v2, v1, v7

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v8, 0x7f0f0281

    const-string v9, "500000"

    invoke-direct {v2, v4, v4, v8, v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v8, 0x4

    aput-object v2, v1, v8

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f0f0279

    const-string v10, "625000"

    invoke-direct {v2, v4, v4, v9, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v9, 0x5

    aput-object v2, v1, v9

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v10, 0x7f0f0273

    const-string v11, "800000"

    invoke-direct {v2, v4, v4, v10, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v10, 0x6

    aput-object v2, v1, v10

    const/4 v2, 0x7

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f0270

    const-string v13, "1000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x8

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f02a0

    const-string v13, "1250000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x9

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f029b

    const-string v13, "1562500"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xa

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f0296

    const-string v13, "2000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xb

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f0291

    const-string v13, "2500000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xc

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f028b

    const-string v13, "3125000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xd

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f0284

    const-string v13, "4000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xe

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f0280

    const-string v13, "5000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xf

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f0278

    const-string v13, "6250000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x10

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f0272

    const-string v13, "8000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x11

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f026f

    const-string v13, "10000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x12

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f029f

    const-string v13, "12500000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x13

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f029a

    const-string v13, "16670000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x14

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f0295

    const-string v13, "20000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x15

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f0290

    const-string v13, "25000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x16

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f0f0289

    const-string v13, "33300000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez v0, :cond_1

    new-array v0, v10, [Lcom/android/camera/data/data/ComponentDataItem;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v10, 0x7f0f0283

    const-string v11, "40000000"

    invoke-direct {v1, v4, v4, v10, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f027f

    const-string v10, "50000000"

    invoke-direct {v1, v4, v4, v3, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f0276

    const-string v5, "66700000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f0274

    const-string v5, "76900000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f026e

    const-string v5, "100000000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f029e

    const-string v5, "125000000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/data/data/ComponentDataItem;

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object p0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    :goto_0
    array-length p1, p0

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_2

    aget-object v2, p0, v0

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->TAG:Ljava/lang/String;

    const-string p1, "checkValueValid: invalid value!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 6

    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f03ba

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa7

    if-eq p1, p0, :cond_0

    const-string p0, "pref_qc_camera_pro_video_exposuretime_key"

    return-object p0

    :cond_0
    const-string p0, "pref_qc_camera_exposuretime_key"

    return-object p0
.end method

.method public getValueDisplayString(I)I
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget p0, v5, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getKey(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "mode %1$d, invalid value %2$s for %3$s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reInit(ILcom/android/camera2/CameraCapabilities;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentManuallyET;->createItems(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public resetComponentValue(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->resetComponentValue(I)V

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.class public final Landroid/telephony/PhysicalChannelConfig$Builder;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhysicalChannelConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCellBandwidthDownlinkKhz:I

.field private mCellConnectionStatus:I

.field private mChannelNumber:I

.field private mContextIds:[I

.field private mFrequencyRange:I

.field private mPhysicalCellId:I

.field private mRat:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mRat:I

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mFrequencyRange:I

    const v1, 0x7fffffff

    iput v1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mChannelNumber:I

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthDownlinkKhz:I

    iput v1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellConnectionStatus:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mContextIds:[I

    iput v1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mPhysicalCellId:I

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellConnectionStatus:I

    return v0
.end method

.method static synthetic access$200(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthDownlinkKhz:I

    return v0
.end method

.method static synthetic access$300(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mRat:I

    return v0
.end method

.method static synthetic access$400(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mChannelNumber:I

    return v0
.end method

.method static synthetic access$500(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mFrequencyRange:I

    return v0
.end method

.method static synthetic access$600(Landroid/telephony/PhysicalChannelConfig$Builder;)[I
    .registers 2

    iget-object v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mContextIds:[I

    return-object v0
.end method

.method static synthetic access$700(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mPhysicalCellId:I

    return v0
.end method


# virtual methods
.method public build()Landroid/telephony/PhysicalChannelConfig;
    .registers 3

    new-instance v0, Landroid/telephony/PhysicalChannelConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/telephony/PhysicalChannelConfig$1;)V

    return-object v0
.end method

.method public setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthDownlinkKhz:I

    return-object p0
.end method

.method public setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellConnectionStatus:I

    return-object p0
.end method

.method public setChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mChannelNumber:I

    return-object p0
.end method

.method public setContextIds([I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .registers 2

    if-eqz p1, :cond_5

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    :cond_5
    iput-object p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mContextIds:[I

    return-object p0
.end method

.method public setFrequencyRange(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mFrequencyRange:I

    return-object p0
.end method

.method public setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mPhysicalCellId:I

    return-object p0
.end method

.method public setRat(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mRat:I

    return-object p0
.end method

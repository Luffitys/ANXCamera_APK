.class public final Landroid/telecom/ParcelableCallAnalytics$EventTiming;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCallAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTiming"
.end annotation


# static fields
.field public static final ACCEPT_TIMING:I = 0x0

.field public static final BIND_CS_TIMING:I = 0x6

.field public static final BLOCK_CHECK_FINISHED_TIMING:I = 0x9

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECT_TO_VM_FINISHED_TIMING:I = 0x8

.field public static final DISCONNECT_TIMING:I = 0x2

.field public static final FILTERING_COMPLETED_TIMING:I = 0xa

.field public static final FILTERING_TIMED_OUT_TIMING:I = 0xb

.field public static final HOLD_TIMING:I = 0x3

.field public static final INVALID:I = 0xf423f

.field public static final OUTGOING_TIME_TO_DIALING_TIMING:I = 0x5

.field public static final REJECT_TIMING:I = 0x1

.field public static final SCREENING_COMPLETED_TIMING:I = 0x7

.field public static final START_CONNECTION_TO_REQUEST_DISCONNECT_TIMING:I = 0xc

.field public static final UNHOLD_TIMING:I = 0x4


# instance fields
.field private mName:I

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$EventTiming$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$EventTiming$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    iput-wide p2, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/ParcelableCallAnalytics$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$EventTiming;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getName()I
    .registers 2

    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    return v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

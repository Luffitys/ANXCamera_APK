.class public Lcom/ss/android/vesdk/VEEqualizerParams;
.super Ljava/lang/Object;
.source "VEEqualizerParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEEqualizerParams$Presets;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEEqualizerParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public amp1000:F

.field public amp125:F

.field public amp16000:F

.field public amp2000:F

.field public amp250:F

.field public amp31:F

.field public amp4000:F

.field public amp500:F

.field public amp63:F

.field public amp8000:F

.field public freqWidth1000:F

.field public freqWidth125:F

.field public freqWidth16000:F

.field public freqWidth2000:F

.field public freqWidth250:F

.field public freqWidth31:F

.field public freqWidth4000:F

.field public freqWidth500:F

.field public freqWidth63:F

.field public freqWidth8000:F

.field public name:Ljava/lang/String;

.field public preamp:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEqualizerParams$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method private constructor <init>(FFFFFFFFFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    const-string v0, "custom"

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    iput p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    iput p3, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    iput p4, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    iput p5, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    iput p6, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    iput p7, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    iput p8, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    iput p9, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    iput p10, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    iput p11, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method private constructor <init>(FFFFFFFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/high16 v1, 0x41400000    # 12.0f

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/4 v1, 0x0

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    const-string v1, "custom"

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    move v1, p11

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    move v1, p1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    move v1, p2

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    move v1, p3

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    move v1, p4

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    move v1, p5

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    move v1, p6

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    move v1, p7

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    move v1, p8

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    move v1, p9

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    move v1, p10

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    move v1, p12

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    move v1, p13

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    move/from16 v1, p14

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    move/from16 v1, p15

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    move/from16 v1, p16

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    move/from16 v1, p17

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    move/from16 v1, p18

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    move/from16 v1, p19

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    move/from16 v1, p20

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    move/from16 v1, p21

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method synthetic constructor <init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFF)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEqualizerParams;
    .locals 3

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/4 v2, 0x3

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    const/4 v1, 0x4

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    const/4 v2, 0x5

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    const/4 v1, 0x6

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    const/4 v2, 0x7

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    const/16 v1, 0x8

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    const/16 v2, 0x9

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    const/16 v1, 0xa

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    const/16 v2, 0xb

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    const/16 v1, 0xc

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/16 v2, 0xd

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    const/16 v1, 0xe

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    const/16 v2, 0xf

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    const/16 v1, 0x10

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    const/16 v2, 0x11

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    const/16 v1, 0x12

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    const/16 v2, 0x13

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    const/16 v1, 0x14

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    const/16 v2, 0x15

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    iput p0, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public copy()Lcom/ss/android/vesdk/VEEqualizerParams;
    .locals 0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEqualizerParams;->getParamsAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEqualizerParams;->fromString(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEqualizerParams;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getParamsAsString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEEqualizerParams{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", preamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp31="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp63="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp125="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp250="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp500="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp1000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp2000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp4000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp8000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp16000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth31="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth63="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth125="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth250="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth500="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth1000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth2000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth4000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth8000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth16000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

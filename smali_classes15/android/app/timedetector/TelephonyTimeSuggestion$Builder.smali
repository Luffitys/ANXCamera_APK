.class public final Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
.super Ljava/lang/Object;
.source "TelephonyTimeSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timedetector/TelephonyTimeSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDebugInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlotIndex:I

.field private mUtcTime:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mSlotIndex:I

    return-void
.end method

.method static synthetic access$100(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)I
    .registers 2

    iget v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mSlotIndex:I

    return v0
.end method

.method static synthetic access$200(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Landroid/os/TimestampedValue;
    .registers 2

    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mUtcTime:Landroid/os/TimestampedValue;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addDebugInfo(Ljava/lang/String;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 3

    new-instance v0, Landroid/app/timedetector/TelephonyTimeSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/timedetector/TelephonyTimeSuggestion;-><init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;Landroid/app/timedetector/TelephonyTimeSuggestion$1;)V

    return-object v0
.end method

.method public setUtcTime(Landroid/os/TimestampedValue;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iput-object p1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mUtcTime:Landroid/os/TimestampedValue;

    return-object p0
.end method

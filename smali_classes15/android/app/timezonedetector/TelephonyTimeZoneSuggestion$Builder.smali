.class public final Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
.super Ljava/lang/Object;
.source "TelephonyTimeZoneSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
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

.field private mMatchType:I

.field private mQuality:I

.field private final mSlotIndex:I

.field private mZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mSlotIndex:I

    return-void
.end method

.method static synthetic access$100(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I
    .registers 2

    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mSlotIndex:I

    return v0
.end method

.method static synthetic access$200(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mZoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I
    .registers 2

    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mMatchType:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I
    .registers 2

    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mQuality:I

    return v0
.end method

.method static synthetic access$500(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 3

    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->validate()V

    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;-><init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$1;)V

    return-object v0
.end method

.method public setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .registers 2

    iput p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mMatchType:I

    return-object p0
.end method

.method public setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .registers 2

    iput p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mQuality:I

    return-object p0
.end method

.method public setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mZoneId:Ljava/lang/String;

    return-object p0
.end method

.method validate()V
    .registers 9

    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mQuality:I

    iget v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mMatchType:I

    iget-object v2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mZoneId:Ljava/lang/String;

    const-string v3, ", matchType="

    if-nez v2, :cond_2c

    if-nez v0, :cond_f

    if-nez v1, :cond_f

    goto :goto_49

    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid quality or match type for null zone ID. quality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_39

    if-eq v0, v5, :cond_39

    if-ne v0, v4, :cond_37

    goto :goto_39

    :cond_37
    move v7, v2

    goto :goto_3a

    :cond_39
    :goto_39
    move v7, v6

    :goto_3a
    if-eq v1, v5, :cond_44

    if-eq v1, v4, :cond_44

    const/4 v4, 0x4

    if-eq v1, v4, :cond_44

    const/4 v4, 0x5

    if-ne v1, v4, :cond_45

    :cond_44
    move v2, v6

    :cond_45
    if-eqz v7, :cond_4a

    if-eqz v2, :cond_4a

    :goto_49
    return-void

    :cond_4a
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid quality or match type with zone ID. quality="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

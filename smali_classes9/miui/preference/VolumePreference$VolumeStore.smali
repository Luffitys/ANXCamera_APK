.class public Lmiui/preference/VolumePreference$VolumeStore;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public originalVolume:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    return-void
.end method

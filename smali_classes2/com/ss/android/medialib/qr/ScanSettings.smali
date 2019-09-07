.class public Lcom/ss/android/medialib/qr/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/qr/ScanSettings$Requirement;
    }
.end annotation


# instance fields
.field public buildChainFlag:I

.field public detectModelDir:Ljava/lang/String;

.field public detectRequirement:J

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->width:I

    iput v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->height:I

    const-wide/32 v0, 0x10000

    iput-wide v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->detectRequirement:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->buildChainFlag:I

    return-void
.end method


# virtual methods
.method public getBuildChainFlag()I
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->buildChainFlag:I

    return p0
.end method

.method public getDetectModelDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->detectModelDir:Ljava/lang/String;

    return-object p0
.end method

.method public getDetectRequirement()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->detectRequirement:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/qr/ScanSettings;->width:I

    return p0
.end method

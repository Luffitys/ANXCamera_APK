.class public abstract Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
.super Ljava/lang/Object;
.source "BiometricAuthenticator.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Identifier"
.end annotation


# instance fields
.field private mBiometricId:I

.field private mDeviceId:J

.field private mName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mName:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mBiometricId:I

    iput-wide p3, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mDeviceId:J

    return-void
.end method


# virtual methods
.method public getBiometricId()I
    .registers 2

    iget v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mBiometricId:I

    return v0
.end method

.method public getDeviceId()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mDeviceId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setDeviceId(J)V
    .registers 3

    iput-wide p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mDeviceId:J

    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mName:Ljava/lang/CharSequence;

    return-void
.end method

.class public interface abstract Landroid/hardware/biometrics/BiometricManager$Authenticators;
.super Ljava/lang/Object;
.source "BiometricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Authenticators"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_CONVENIENCE:I = 0xfff
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BIOMETRIC_MAX_STRENGTH:I = 0x1

.field public static final BIOMETRIC_MIN_STRENGTH:I = 0x7fff

.field public static final BIOMETRIC_STRONG:I = 0xf

.field public static final BIOMETRIC_WEAK:I = 0xff

.field public static final DEVICE_CREDENTIAL:I = 0x8000

.field public static final EMPTY_SET:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

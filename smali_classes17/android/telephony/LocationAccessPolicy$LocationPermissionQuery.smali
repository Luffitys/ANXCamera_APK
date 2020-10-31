.class public Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
.super Ljava/lang/Object;
.source "LocationAccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/LocationAccessPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationPermissionQuery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    }
.end annotation


# instance fields
.field public final callingFeatureId:Ljava/lang/String;

.field public final callingPackage:Ljava/lang/String;

.field public final callingPid:I

.field public final callingUid:I

.field public final logAsInfo:Z

.field public final method:Ljava/lang/String;

.field public final minSdkVersionForCoarse:I

.field public final minSdkVersionForFine:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingFeatureId:Ljava/lang/String;

    iput p3, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    iput p4, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPid:I

    iput p5, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForCoarse:I

    iput p6, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForFine:I

    iput-boolean p7, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->logAsInfo:Z

    iput-object p8, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->method:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/lang/String;Landroid/telephony/LocationAccessPolicy$1;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/lang/String;)V

    return-void
.end method

.class public Landroid/app/AppOpsManager$RestrictionBypass;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictionBypass"
.end annotation


# static fields
.field public static UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;


# instance fields
.field public isPrivileged:Z

.field public isRecordAudioRestrictionExcept:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZ)V

    sput-object v0, Landroid/app/AppOpsManager$RestrictionBypass;->UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    iput-boolean p2, p0, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    return-void
.end method

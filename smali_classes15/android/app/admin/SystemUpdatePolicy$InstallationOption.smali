.class public Landroid/app/admin/SystemUpdatePolicy$InstallationOption;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SystemUpdatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallationOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SystemUpdatePolicy$InstallationOption$InstallationOptionType;
    }
.end annotation


# instance fields
.field private mEffectiveTime:J

.field private final mType:I


# direct methods
.method constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mType:I

    iput-wide p2, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    return-void
.end method


# virtual methods
.method public getEffectiveTime()J
    .registers 3

    iget-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mType:I

    return v0
.end method

.method protected limitEffectiveTime(J)V
    .registers 5

    iget-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    return-void
.end method

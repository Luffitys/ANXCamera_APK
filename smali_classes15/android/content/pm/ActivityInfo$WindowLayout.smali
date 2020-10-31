.class public final Landroid/content/pm/ActivityInfo$WindowLayout;
.super Ljava/lang/Object;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowLayout"
.end annotation


# instance fields
.field public final gravity:I

.field public final height:I

.field public final heightFraction:F

.field public final minHeight:I

.field public final minWidth:I

.field public final width:I

.field public final widthFraction:F

.field public windowLayoutAffinity:Ljava/lang/String;


# direct methods
.method public constructor <init>(IFIFIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    iput p2, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    iput p3, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    iput p4, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    iput p5, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    iput p6, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput p7, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasSpecifiedSize()Z
    .registers 3

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-gez v0, :cond_18

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-gez v0, :cond_18

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_18

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method

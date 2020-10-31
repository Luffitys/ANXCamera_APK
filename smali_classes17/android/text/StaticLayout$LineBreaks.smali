.class Landroid/text/StaticLayout$LineBreaks;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineBreaks"
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x10


# instance fields
.field public ascents:[F

.field public breaks:[I

.field public descents:[F

.field public flags:[I

.field public widths:[F


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/text/StaticLayout$LineBreaks;->ascents:[F

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/text/StaticLayout$LineBreaks;->descents:[F

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    return-void
.end method

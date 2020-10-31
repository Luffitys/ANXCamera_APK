.class public Landroid/text/style/TabStopSpan$Standard;
.super Ljava/lang/Object;
.source "TabStopSpan.java"

# interfaces
.implements Landroid/text/style/TabStopSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TabStopSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private mTabOffset:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/style/TabStopSpan$Standard;->mTabOffset:I

    return-void
.end method


# virtual methods
.method public getTabStop()I
    .registers 2

    iget v0, p0, Landroid/text/style/TabStopSpan$Standard;->mTabOffset:I

    return v0
.end method

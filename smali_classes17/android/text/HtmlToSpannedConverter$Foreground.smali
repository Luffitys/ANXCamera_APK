.class Landroid/text/HtmlToSpannedConverter$Foreground;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Foreground"
.end annotation


# instance fields
.field private mForegroundColor:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Foreground;->mForegroundColor:I

    return-void
.end method

.method static synthetic access$1500(Landroid/text/HtmlToSpannedConverter$Foreground;)I
    .registers 2

    iget v0, p0, Landroid/text/HtmlToSpannedConverter$Foreground;->mForegroundColor:I

    return v0
.end method

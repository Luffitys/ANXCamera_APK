.class Landroid/text/HtmlToSpannedConverter$Heading;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Heading"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Heading;->mLevel:I

    return-void
.end method

.method static synthetic access$1300(Landroid/text/HtmlToSpannedConverter$Heading;)I
    .registers 2

    iget v0, p0, Landroid/text/HtmlToSpannedConverter$Heading;->mLevel:I

    return v0
.end method

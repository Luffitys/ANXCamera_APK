.class public final Landroid/text/SpannedString;
.super Landroid/text/SpannableStringInternal;
.source "SpannedString.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;
    .registers 2

    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Landroid/text/SpannedString;

    return-object v0

    :cond_8
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpanEnd(Ljava/lang/Object;)I
    .registers 2

    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpanFlags(Ljava/lang/Object;)I
    .registers 2

    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpanStart(Ljava/lang/Object;)I
    .registers 2

    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    invoke-super {p0}, Landroid/text/SpannableStringInternal;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic nextSpanTransition(IILjava/lang/Class;)I
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic removeSpan(Ljava/lang/Object;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;I)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

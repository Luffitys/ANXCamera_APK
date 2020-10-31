.class public final Landroid/view/textclassifier/TextLinks$TextLink;
.super Ljava/lang/Object;
.source "TextLinks.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextLink"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnd:I

.field private final mEntityScores:Landroid/view/textclassifier/EntityConfidence;

.field private final mExtras:Landroid/os/Bundle;

.field private final mStart:I

.field private final mUrlSpan:Landroid/text/style/URLSpan;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/textclassifier/TextLinks$TextLink$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinks$TextLink$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLinks$TextLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/text/style/URLSpan;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-gt p1, p2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    iput p2, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    iput-object p3, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    iput-object p5, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    iput-object p4, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/text/style/URLSpan;Landroid/view/textclassifier/TextLinks$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/view/textclassifier/TextLinks$TextLink;-><init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/text/style/URLSpan;)V

    return-void
.end method

.method static synthetic access$100(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$TextLink;
    .registers 2

    invoke-static {p0}, Landroid/view/textclassifier/TextLinks$TextLink;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$TextLink;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/text/style/URLSpan;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$TextLink;
    .registers 12

    sget-object v0, Landroid/view/textclassifier/EntityConfidence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v9

    new-instance v10, Landroid/view/textclassifier/TextLinks$TextLink;

    const/4 v6, 0x0

    move-object v1, v10

    move v2, v7

    move v3, v8

    move-object v4, v0

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/TextLinks$TextLink;-><init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/text/style/URLSpan;)V

    return-object v10
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getConfidenceScore(Ljava/lang/String;)F
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getEnd()I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    return v0
.end method

.method public getEntity(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEntityCount()I
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStart()I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "TextLink{start=%s, end=%s, entityScores=%s, urlSpan=%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

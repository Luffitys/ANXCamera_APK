.class Landroid/text/TextDirectionHeuristics$FirstStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstStrong"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0}, Landroid/text/TextDirectionHeuristics$FirstStrong;-><init>()V

    sput-object v0, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    move v2, p2

    add-int v3, p2, p3

    :goto_5
    if-ge v2, v3, :cond_2e

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2e

    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const/16 v5, 0x2066

    if-gt v5, v4, :cond_19

    const/16 v5, 0x2068

    if-gt v4, v5, :cond_19

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_19
    const/16 v5, 0x2069

    if-ne v4, v5, :cond_22

    if-lez v1, :cond_28

    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    :cond_22
    if-nez v1, :cond_28

    # invokes: Landroid/text/TextDirectionHeuristics;->isRtlCodePoint(I)I
    invoke-static {v4}, Landroid/text/TextDirectionHeuristics;->access$100(I)I

    move-result v0

    :cond_28
    :goto_28
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_5

    :cond_2e
    return v0
.end method

.class Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;
.super Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
.source "TextDirectionHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicLocale"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;

    invoke-direct {v0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;-><init>()V

    sput-object v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;->INSTANCE:Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V

    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

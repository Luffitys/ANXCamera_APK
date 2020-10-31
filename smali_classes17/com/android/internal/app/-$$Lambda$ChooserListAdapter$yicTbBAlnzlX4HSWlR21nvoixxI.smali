.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$yicTbBAlnzlX4HSWlR21nvoixxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$yicTbBAlnzlX4HSWlR21nvoixxI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$yicTbBAlnzlX4HSWlR21nvoixxI;

    invoke-direct {v0}, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$yicTbBAlnzlX4HSWlR21nvoixxI;-><init>()V

    sput-object v0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$yicTbBAlnzlX4HSWlR21nvoixxI;->INSTANCE:Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$yicTbBAlnzlX4HSWlR21nvoixxI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-static {p1}, Lcom/android/internal/app/ChooserListAdapter;->lambda$completeServiceTargetLoading$12(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result p1

    return p1
.end method

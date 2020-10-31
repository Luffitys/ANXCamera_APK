.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$8HtMdVlUWw1aFqhES60XWwoBEJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserListAdapter;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserListAdapter;Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;ZLjava/util/Map;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$8HtMdVlUWw1aFqhES60XWwoBEJA;->f$0:Lcom/android/internal/app/ChooserListAdapter;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$8HtMdVlUWw1aFqhES60XWwoBEJA;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$8HtMdVlUWw1aFqhES60XWwoBEJA;->f$2:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-boolean p4, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$8HtMdVlUWw1aFqhES60XWwoBEJA;->f$3:Z

    iput-object p5, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$8HtMdVlUWw1aFqhES60XWwoBEJA;->f$4:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$8HtMdVlUWw1aFqhES60XWwoBEJA;->f$0:Lcom/android/internal/app/ChooserListAdapter;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$8HtMdVlUWw1aFqhES60XWwoBEJA;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$8HtMdVlUWw1aFqhES60XWwoBEJA;->f$2:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-boolean v3, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$8HtMdVlUWw1aFqhES60XWwoBEJA;->f$3:Z

    iget-object v4, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$8HtMdVlUWw1aFqhES60XWwoBEJA;->f$4:Ljava/util/Map;

    move-object v5, p1

    check-cast v5, Landroid/service/chooser/ChooserTarget;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ChooserListAdapter;->lambda$parkTargetIntoMemory$3$ChooserListAdapter(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;ZLjava/util/Map;Landroid/service/chooser/ChooserTarget;)Lcom/android/internal/app/chooser/SelectableTargetInfo;

    move-result-object p1

    return-object p1
.end method

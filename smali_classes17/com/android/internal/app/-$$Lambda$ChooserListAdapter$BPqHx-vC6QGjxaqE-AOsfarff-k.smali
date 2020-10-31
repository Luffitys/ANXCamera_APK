.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$BPqHx-vC6QGjxaqE-AOsfarff-k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$BPqHx-vC6QGjxaqE-AOsfarff-k;->f$0:Lcom/android/internal/app/ChooserListAdapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$BPqHx-vC6QGjxaqE-AOsfarff-k;->f$0:Lcom/android/internal/app/ChooserListAdapter;

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->lambda$addChooserTargetRankingScore$0$ChooserListAdapter(Landroid/content/ComponentName;)V

    return-void
.end method

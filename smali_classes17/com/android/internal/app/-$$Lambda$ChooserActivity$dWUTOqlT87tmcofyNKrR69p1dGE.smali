.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserActivity$dWUTOqlT87tmcofyNKrR69p1dGE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivity;

.field public final synthetic f$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field public final synthetic f$2:Lcom/android/internal/widget/RecyclerView;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/RecyclerView;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$dWUTOqlT87tmcofyNKrR69p1dGE;->f$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$dWUTOqlT87tmcofyNKrR69p1dGE;->f$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iput-object p3, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$dWUTOqlT87tmcofyNKrR69p1dGE;->f$2:Lcom/android/internal/widget/RecyclerView;

    iput p4, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$dWUTOqlT87tmcofyNKrR69p1dGE;->f$3:I

    iput p5, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$dWUTOqlT87tmcofyNKrR69p1dGE;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$dWUTOqlT87tmcofyNKrR69p1dGE;->f$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$dWUTOqlT87tmcofyNKrR69p1dGE;->f$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$dWUTOqlT87tmcofyNKrR69p1dGE;->f$2:Lcom/android/internal/widget/RecyclerView;

    iget v3, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$dWUTOqlT87tmcofyNKrR69p1dGE;->f$3:I

    iget v4, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$dWUTOqlT87tmcofyNKrR69p1dGE;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ChooserActivity;->lambda$handleLayoutChange$4$ChooserActivity(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/RecyclerView;II)V

    return-void
.end method

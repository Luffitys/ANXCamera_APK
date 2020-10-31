.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ChooserGridAdapter$Gqr74VA0ZA5zwsxna9-F1GYJh8A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

.field public final synthetic f$1:Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ChooserGridAdapter$Gqr74VA0ZA5zwsxna9-F1GYJh8A;->f$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ChooserGridAdapter$Gqr74VA0ZA5zwsxna9-F1GYJh8A;->f$1:Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;

    iput p3, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ChooserGridAdapter$Gqr74VA0ZA5zwsxna9-F1GYJh8A;->f$2:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ChooserGridAdapter$Gqr74VA0ZA5zwsxna9-F1GYJh8A;->f$0:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ChooserGridAdapter$Gqr74VA0ZA5zwsxna9-F1GYJh8A;->f$1:Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;

    iget v2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$ChooserGridAdapter$Gqr74VA0ZA5zwsxna9-F1GYJh8A;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;->lambda$loadViewsIntoGroup$0$ChooserActivityForCts$ChooserGridAdapter(Lcom/android/internal/app/ChooserActivityForCts$ItemGroupViewHolder;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method

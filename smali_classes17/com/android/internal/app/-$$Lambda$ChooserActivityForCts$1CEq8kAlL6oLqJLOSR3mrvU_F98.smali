.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivityForCts;

.field public final synthetic f$1:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

.field public final synthetic f$2:Lcom/android/internal/widget/RecyclerView;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;Lcom/android/internal/widget/RecyclerView;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;->f$0:Lcom/android/internal/app/ChooserActivityForCts;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;->f$1:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    iput-object p3, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;->f$2:Lcom/android/internal/widget/RecyclerView;

    iput p4, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;->f$3:I

    iput p5, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;->f$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;->f$1:Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;

    iget-object v2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;->f$2:Lcom/android/internal/widget/RecyclerView;

    iget v3, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;->f$3:I

    iget v4, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$1CEq8kAlL6oLqJLOSR3mrvU_F98;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ChooserActivityForCts;->lambda$handleLayoutChange$4$ChooserActivityForCts(Lcom/android/internal/app/ChooserActivityForCts$ChooserGridAdapter;Lcom/android/internal/widget/RecyclerView;II)V

    return-void
.end method

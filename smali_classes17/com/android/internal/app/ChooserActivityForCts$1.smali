.class Lcom/android/internal/app/ChooserActivityForCts$1;
.super Ljava/lang/Object;
.source "ChooserActivityForCts.java"

# interfaces
.implements Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivityForCts;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWrittenOnce:Z

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivityForCts;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts$1;->mWrittenOnce:Z

    return-void
.end method


# virtual methods
.method public onCollapsedChanged(Z)V
    .registers 3

    if-nez p1, :cond_e

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts$1;->mWrittenOnce:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    # invokes: Lcom/android/internal/app/ChooserActivityForCts;->incrementNumSheetExpansions()V
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivityForCts;->access$900(Lcom/android/internal/app/ChooserActivityForCts;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivityForCts$1;->mWrittenOnce:Z

    :cond_e
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityForCts$1;->this$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityForCts;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetExpansionChanged(Z)V

    return-void
.end method

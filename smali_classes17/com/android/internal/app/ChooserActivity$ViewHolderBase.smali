.class Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderBase"
.end annotation


# instance fields
.field private mViewType:I

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->mViewType:I

    return-void
.end method


# virtual methods
.method getViewType()I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->mViewType:I

    return v0
.end method

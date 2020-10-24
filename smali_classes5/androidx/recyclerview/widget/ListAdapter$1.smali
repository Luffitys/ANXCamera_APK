.class Landroidx/recyclerview/widget/ListAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/AsyncListDiffer$ListListener;


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ListAdapter;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/ListAdapter$1;->this$0:Landroidx/recyclerview/widget/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter$1;->this$0:Landroidx/recyclerview/widget/ListAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ListAdapter;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

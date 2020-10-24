.class Lcom/android/camera/fragment/FragmentMainContent$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentMainContent$1;

.field final synthetic val$adapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;

.field final synthetic val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentMainContent$1;Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$1$1;->this$1:Lcom/android/camera/fragment/FragmentMainContent$1;

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent$1$1;->val$adapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;

    iput-object p3, p0, Lcom/android/camera/fragment/FragmentMainContent$1$1;->val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent$1$1;->val$adapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->getSelectLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent$1$1;->val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->commit()Z

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent$1$1;->this$1:Lcom/android/camera/fragment/FragmentMainContent$1;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentMainContent;->access$200(Lcom/android/camera/fragment/FragmentMainContent;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->access$300(Lcom/android/camera/fragment/FragmentMainContent;I)V

    :cond_0
    return-void
.end method

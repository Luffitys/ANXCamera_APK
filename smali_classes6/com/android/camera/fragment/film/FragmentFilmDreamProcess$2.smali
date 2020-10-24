.class Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$2;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "value_film_dream_exit_confirm"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmDreamClick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$2;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->quitLiveRecordPreview(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$2;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$000(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Z

    return-void
.end method

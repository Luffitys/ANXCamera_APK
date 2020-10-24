.class Lcom/android/camera/fragment/film/FragmentFilmGallery$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/fragment/film/FilmResourceSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/film/FragmentFilmGallery;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmGallery;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery$1;->this$0:Lcom/android/camera/fragment/film/FragmentFilmGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady()V
    .locals 0

    return-void
.end method

.method public onResourceSelected(Lcom/android/camera/fragment/film/FilmItem;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery$1;->this$0:Lcom/android/camera/fragment/film/FragmentFilmGallery;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->access$002(Lcom/android/camera/fragment/film/FragmentFilmGallery;Lcom/android/camera/fragment/film/FilmItem;)Lcom/android/camera/fragment/film/FilmItem;

    return-void
.end method

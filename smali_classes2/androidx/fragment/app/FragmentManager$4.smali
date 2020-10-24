.class Landroidx/fragment/app/FragmentManager$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/fragment/app/SpecialEffectsControllerFactory;


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$4;->this$0:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createController(Landroid/view/ViewGroup;)Landroidx/fragment/app/SpecialEffectsController;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Landroidx/fragment/app/DefaultSpecialEffectsController;

    invoke-direct {p0, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    return-object p0
.end method

.class Lcom/android/internal/app/ResolverActivityInjector$LoadIconIntoViewTask;
.super Lcom/android/internal/app/ResolverActivityInjector$LoadIconTask;
.source "ResolverActivityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconIntoViewTask"
.end annotation


# instance fields
.field private final mTargetView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityInjector;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivityInjector;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivityInjector$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivityInjector;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivityInjector$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityInjector$LoadIconIntoViewTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

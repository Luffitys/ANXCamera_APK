.class public final synthetic Lcom/android/camera/data/observeable/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic wb:Lcom/android/camera/data/observeable/VlogViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/data/observeable/VlogViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/observeable/a;->wb:Lcom/android/camera/data/observeable/VlogViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/observeable/a;->wb:Lcom/android/camera/data/observeable/VlogViewModel;

    check-cast p1, Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/observeable/VlogViewModel;->b(Lcom/android/camera/fragment/vv/VVList;)Lcom/android/camera/fragment/vv/VVList;

    move-result-object p0

    return-object p0
.end method

.class Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomLayoutListener;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiBottomLayoutListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMiuiBottomArea:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomLayoutListener;->mMiuiBottomArea:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomLayoutListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomLayoutListener;->mMiuiBottomArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomLayoutListener;->mContext:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->changeViewForMiuiBottom(Landroid/view/ViewGroup;Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$3100(Landroid/view/ViewGroup;Landroid/content/Context;)V

    return-void
.end method

.class Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloudClipboardPasteModeObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->getCloudClipboardQuickPasteMode(Landroid/content/Context;)I

    move-result v0

    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipPasteMode:I
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1602(I)I

    return-void
.end method

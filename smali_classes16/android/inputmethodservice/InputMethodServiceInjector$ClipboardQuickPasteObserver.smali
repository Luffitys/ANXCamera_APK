.class Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClipboardQuickPasteObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->getClipboardQuickPasteEnable(Landroid/content/Context;)Z

    move-result v0

    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sClipQuickPasteEnable:Z
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1702(Z)Z

    return-void
.end method

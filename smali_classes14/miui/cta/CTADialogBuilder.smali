.class public Lmiui/cta/CTADialogBuilder;
.super Lmiui/app/AlertDialog$Builder;
.source "CTADialogBuilder.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lmiui/cta/CTADialogBuilder;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lmiui/cta/CTADialogBuilder;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lmiui/cta/CTADialogBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/miui/system/internal/R$string;->cta_title:I

    invoke-virtual {p0, v0}, Lmiui/cta/CTADialogBuilder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/cta/CTADialogBuilder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public setNegativeButton(Landroid/content/DialogInterface$OnClickListener;)Lmiui/cta/CTADialogBuilder;
    .registers 3

    sget v0, Lcom/miui/system/internal/R$string;->cta_button_quit:I

    invoke-virtual {p0, v0, p1}, Lmiui/cta/CTADialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(Landroid/content/DialogInterface$OnClickListener;)Lmiui/cta/CTADialogBuilder;
    .registers 3

    sget v0, Lcom/miui/system/internal/R$string;->cta_button_continue:I

    invoke-virtual {p0, v0, p1}, Lmiui/cta/CTADialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

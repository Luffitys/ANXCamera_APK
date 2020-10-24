.class Lmiuix/preference/BuilderDelegate;
.super Landroid/app/AlertDialog$Builder;
.source ""


# instance fields
.field private mMiuixBuilder:Lmiui/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmiui/app/AlertDialog$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/AlertDialog$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lmiuix/preference/BuilderDelegate;-><init>(Landroid/content/Context;ILmiui/app/AlertDialog$Builder;)V

    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/app/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setIcon(I)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setIconAttribute(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setIconAttribute(I)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/app/AlertDialog$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setView(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setView(I)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/BuilderDelegate;->mMiuixBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    return-object p0
.end method

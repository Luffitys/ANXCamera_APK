.class public Lcom/ss/android/vesdk/VEEqualizerParams$Presets;
.super Ljava/lang/Object;
.source "VEEqualizerParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEqualizerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Presets"
.end annotation


# static fields
.field public static final CLASSICAL:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final CLUB:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final DANCE:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final FLAT:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final FULLBASS:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final FULLBASSTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final FULLTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final HEADPHONES:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final LARGEHALL:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final LIVE:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final NONE:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final PARTY:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final POP:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final ROCK:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final SOFT:Lcom/ss/android/vesdk/VEEqualizerParams;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->NONE:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FLAT:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v15, 0x41400000    # 12.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, -0x3f19999a    # -7.2f

    const v23, -0x3f19999a    # -7.2f

    const v24, -0x3f19999a    # -7.2f

    const v25, -0x3ee66666    # -9.6f

    const/16 v26, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->CLASSICAL:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v5, 0x41000000    # 8.0f

    const v6, 0x40b33333    # 5.6f

    const v7, 0x40b33333    # 5.6f

    const v8, 0x40b33333    # 5.6f

    const v9, 0x404ccccd    # 3.2f

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->CLUB:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v15, 0x40a00000    # 5.0f

    const v16, 0x4119999a    # 9.6f

    const v17, 0x40e66666    # 7.2f

    const v18, 0x4019999a    # 2.4f

    const v21, -0x3f4ccccd    # -5.6f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->DANCE:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, -0x3f000000    # -8.0f

    const v4, 0x4119999a    # 9.6f

    const v5, 0x4119999a    # 9.6f

    const v7, 0x3fcccccd    # 1.6f

    const/high16 v8, -0x3f800000    # -4.0f

    const/high16 v9, -0x3f000000    # -8.0f

    const v10, -0x3ed9999a    # -10.4f

    const v11, -0x3ecccccd    # -11.2f

    const v12, -0x3ecccccd    # -11.2f

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLBASS:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v15, 0x40800000    # 4.0f

    const v16, 0x40e66666    # 7.2f

    const v17, 0x40b33333    # 5.6f

    const/16 v18, 0x0

    const v19, -0x3f19999a    # -7.2f

    const v20, -0x3f666666    # -4.8f

    const v21, 0x3fcccccd    # 1.6f

    const/high16 v22, 0x41000000    # 8.0f

    const v23, 0x41333333    # 11.2f

    const/high16 v24, 0x41400000    # 12.0f

    const/high16 v25, 0x41400000    # 12.0f

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLBASSTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v2, 0x40400000    # 3.0f

    const v3, -0x3ee66666    # -9.6f

    const v4, -0x3ee66666    # -9.6f

    const v5, -0x3ee66666    # -9.6f

    const/high16 v6, -0x3f800000    # -4.0f

    const v7, 0x4019999a    # 2.4f

    const v8, 0x41333333    # 11.2f

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, 0x41800000    # 16.0f

    const v12, 0x41866666    # 16.8f

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const v16, 0x4099999a    # 4.8f

    const v17, 0x41333333    # 11.2f

    const v18, 0x40b33333    # 5.6f

    const v19, -0x3fb33333    # -3.2f

    const v20, -0x3fe66666    # -2.4f

    const v22, 0x4099999a    # 4.8f

    const v23, 0x4119999a    # 9.6f

    const v24, 0x414ccccd    # 12.8f

    const v25, 0x41666666    # 14.4f

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->HEADPHONES:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v2, 0x40a00000    # 5.0f

    const v3, 0x41266666    # 10.4f

    const v4, 0x41266666    # 10.4f

    const v5, 0x40b33333    # 5.6f

    const v6, 0x40b33333    # 5.6f

    const/4 v7, 0x0

    const v8, -0x3f666666    # -4.8f

    const v9, -0x3f666666    # -4.8f

    const v10, -0x3f666666    # -4.8f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->LARGEHALL:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v15, 0x40e00000    # 7.0f

    const v16, -0x3f666666    # -4.8f

    const/16 v17, 0x0

    const/high16 v18, 0x40800000    # 4.0f

    const v19, 0x40b33333    # 5.6f

    const v20, 0x40b33333    # 5.6f

    const v21, 0x40b33333    # 5.6f

    const/high16 v22, 0x40800000    # 4.0f

    const v23, 0x4019999a    # 2.4f

    const v24, 0x4019999a    # 2.4f

    const v25, 0x4019999a    # 2.4f

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->LIVE:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v2, 0x40c00000    # 6.0f

    const v3, 0x40e66666    # 7.2f

    const v4, 0x40e66666    # 7.2f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x40e66666    # 7.2f

    const v12, 0x40e66666    # 7.2f

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->PARTY:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v15, 0x40c00000    # 6.0f

    const v16, -0x40333333    # -1.6f

    const v17, 0x4099999a    # 4.8f

    const v18, 0x40e66666    # 7.2f

    const/high16 v19, 0x41000000    # 8.0f

    const/16 v21, 0x0

    const v22, -0x3fe66666    # -2.4f

    const v23, -0x3fe66666    # -2.4f

    const v24, -0x40333333    # -1.6f

    const v25, -0x40333333    # -1.6f

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->POP:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x41000000    # 8.0f

    const v4, 0x4099999a    # 4.8f

    const v5, -0x3f4ccccd    # -5.6f

    const/high16 v6, -0x3f000000    # -8.0f

    const v7, -0x3fb33333    # -3.2f

    const/high16 v8, 0x40800000    # 4.0f

    const v9, 0x410ccccd    # 8.8f

    const v10, 0x41333333    # 11.2f

    const v11, 0x41333333    # 11.2f

    const v12, 0x41333333    # 11.2f

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->ROCK:Lcom/ss/android/vesdk/VEEqualizerParams;

    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v15, 0x40a00000    # 5.0f

    const v16, 0x4099999a    # 4.8f

    const v17, 0x3fcccccd    # 1.6f

    const/16 v18, 0x0

    const v19, -0x3fe66666    # -2.4f

    const/16 v20, 0x0

    const/high16 v21, 0x40800000    # 4.0f

    const/high16 v22, 0x41000000    # 8.0f

    const v23, 0x4119999a    # 9.6f

    const v24, 0x41333333    # 11.2f

    const/high16 v25, 0x41400000    # 12.0f

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->SOFT:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromValue(I)Lcom/ss/android/vesdk/VEEqualizerParams;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->NONE:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->SOFT:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->ROCK:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->POP:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->PARTY:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->LIVE:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->LARGEHALL:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->HEADPHONES:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLBASSTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLBASS:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->DANCE:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->CLUB:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->CLASSICAL:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FLAT:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

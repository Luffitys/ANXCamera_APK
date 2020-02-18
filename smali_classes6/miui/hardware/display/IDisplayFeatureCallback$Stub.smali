.class public abstract Lmiui/hardware/display/IDisplayFeatureCallback$Stub;
.super Landroid/os/HwBinder;
.source "IDisplayFeatureCallback.java"

# interfaces
.implements Lmiui/hardware/display/IDisplayFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/display/IDisplayFeatureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 15
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 62
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 63
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 64
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 65
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 66
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_20

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_34
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeatureCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 32
    const-string/jumbo v0, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeatureCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 71
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 72
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    const-string v0, "android.hidl.base@1.0::IBase"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_1a0

    goto/16 :goto_19e

    .line 273
    :sswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10

    move v2, v3

    :cond_10
    move v0, v2

    .line 274
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_19e

    .line 275
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 276
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 277
    goto/16 :goto_19e

    .line 260
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20

    move v2, v3

    .line 261
    .local v2, "_hidl_is_oneway":Z
    :cond_20
    if-eq v2, v3, :cond_2a

    .line 262
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 263
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 264
    goto/16 :goto_19e

    .line 265
    :cond_2a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;->notifySyspropsChanged()V

    .line 268
    goto/16 :goto_19e

    .line 244
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_32
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_37

    goto :goto_38

    :cond_37
    move v3, v2

    .line 245
    .local v3, "_hidl_is_oneway":Z
    :goto_38
    if-eqz v3, :cond_42

    .line 246
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 247
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 248
    goto/16 :goto_19e

    .line 249
    :cond_42
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 252
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 253
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 255
    goto/16 :goto_19e

    .line 229
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_54
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_59

    goto :goto_5a

    :cond_59
    move v3, v2

    .line 230
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5a
    if-eqz v3, :cond_64

    .line 231
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 232
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 233
    goto/16 :goto_19e

    .line 234
    :cond_64
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;->ping()V

    .line 237
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 238
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 239
    goto/16 :goto_19e

    .line 219
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_77

    move v2, v3

    :cond_77
    move v0, v2

    .line 220
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_19e

    .line 221
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 222
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 223
    goto/16 :goto_19e

    .line 206
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_82
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_87

    move v2, v3

    .line 207
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v2, v3, :cond_91

    .line 208
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 209
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 210
    goto/16 :goto_19e

    .line 211
    :cond_91
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;->setHALInstrumentation()V

    .line 214
    goto/16 :goto_19e

    .line 173
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_99
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9e

    goto :goto_9f

    :cond_9e
    move v3, v2

    .line 174
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_9f
    if-eqz v3, :cond_a9

    .line 175
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 177
    goto/16 :goto_19e

    .line 178
    :cond_a9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 181
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 183
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 185
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 186
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 187
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 188
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 189
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d0
    if-ge v5, v4, :cond_e2

    .line 191
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 192
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 193
    nop

    .line 189
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_d0

    .line 196
    .end local v5    # "_hidl_index_0":I
    :cond_e2
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 198
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 200
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 201
    goto/16 :goto_19e

    .line 157
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_ef
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f4

    goto :goto_f5

    :cond_f4
    move v3, v2

    .line 158
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_f5
    if-eqz v3, :cond_ff

    .line 159
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 160
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 161
    goto/16 :goto_19e

    .line 162
    :cond_ff
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 166
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 168
    goto/16 :goto_19e

    .line 143
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_111
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_116

    goto :goto_117

    :cond_116
    move v3, v2

    .line 144
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_117
    if-eqz v3, :cond_121

    .line 145
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 146
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 147
    goto/16 :goto_19e

    .line 148
    :cond_121
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 152
    goto/16 :goto_19e

    .line 127
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_12c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_131

    goto :goto_132

    :cond_131
    move v3, v2

    .line 128
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_132
    if-eqz v3, :cond_13b

    .line 129
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 131
    goto :goto_19e

    .line 132
    :cond_13b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 138
    goto :goto_19e

    .line 103
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_14c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_152

    move v0, v3

    goto :goto_153

    :cond_152
    move v0, v2

    .line 104
    .local v0, "_hidl_is_oneway":Z
    :goto_153
    if-eq v0, v3, :cond_15c

    .line 105
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 106
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 107
    goto :goto_19e

    .line 108
    :cond_15c
    const-string/jumbo v1, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeatureCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 111
    .local v1, "caseId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 113
    .local v4, "value":I
    const/4 v5, 0x0

    .line 114
    .local v5, "red":F
    const/4 v6, 0x0

    .line 115
    .local v6, "green":F
    const/4 v7, 0x0

    .line 116
    .local v7, "blue":F
    const/16 v8, 0x4e20

    if-ne v1, v8, :cond_17d

    .line 117
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v5

    .line 118
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v6

    .line 119
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v7

    .line 121
    :cond_17d
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v3

    const/4 v2, 0x2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-virtual {p0, v1, v8}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;->displayfeatureInfoChanged(I[Ljava/lang/Object;)V

    .line 122
    nop

    .line 282
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "caseId":I
    .end local v4    # "value":I
    .end local v5    # "red":F
    .end local v6    # "green":F
    .end local v7    # "blue":F
    :cond_19e
    :goto_19e
    return-void

    nop

    :sswitch_data_1a0
    .sparse-switch
        0x1 -> :sswitch_14c
        0xf43484e -> :sswitch_12c
        0xf444247 -> :sswitch_111
        0xf445343 -> :sswitch_ef
        0xf485348 -> :sswitch_99
        0xf494e54 -> :sswitch_82
        0xf4c5444 -> :sswitch_72
        0xf504e47 -> :sswitch_54
        0xf524546 -> :sswitch_32
        0xf535953 -> :sswitch_1b
        0xf555444 -> :sswitch_b
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 56
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeatureCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 83
    return-object p0

    .line 85
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 76
    const/4 v0, 0x1

    return v0
.end method
